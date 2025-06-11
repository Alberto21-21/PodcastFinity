import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.sql.*;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class PuntuacionesPorUsuarioApp extends Application {

    private final String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
    private final String USER = "tu_usuario";
    private final String PASS = "tu_contraseña";

    private TableView<UsuarioPuntuacion> table = new TableView<>();

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage stage) {
        TableColumn<UsuarioPuntuacion, String> nombreCol = new TableColumn<>("Usuario");
        nombreCol.setCellValueFactory(new PropertyValueFactory<>("nombre"));

        TableColumn<UsuarioPuntuacion, Integer> totalCol = new TableColumn<>("Total Puntuaciones");
        totalCol.setCellValueFactory(new PropertyValueFactory<>("totalPuntuaciones"));

        table.getColumns().addAll(nombreCol, totalCol);

        table.setItems(obtenerDatos());

        VBox root = new VBox(table);
        Scene scene = new Scene(root, 400, 300);

        stage.setTitle("Total de Puntuaciones por Usuario");
        stage.setScene(scene);
        stage.show();
    }

    private ObservableList<UsuarioPuntuacion> obtenerDatos() {
        ObservableList<UsuarioPuntuacion> datos = FXCollections.observableArrayList();

        String sql = """
            SELECT u.nombre AS Usuario, COUNT(p.id_puntuacion) AS Total_Puntuaciones
            FROM Puntuacion p
            JOIN Usuario u ON p.id_usuario = u.id_usuario
            GROUP BY u.nombre
            ORDER BY Total_Puntuaciones DESC
        """;

        try (Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql)) {

                while (rs.next()) {
                    String nombre = rs.getString("Usuario");
                    int total = rs.getInt("Total_Puntuaciones");
                    datos.add(new UsuarioPuntuacion(nombre, total));
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }

            return datos;
        }

    public static class UsuarioPuntuacion {
        private final String nombre;
        private final int totalPuntuaciones;

        public UsuarioPuntuacion(String nombre, int totalPuntuaciones) {
            this.nombre = nombre;
            this.totalPuntuaciones = totalPuntuaciones;
        }

        public String getNombre() {
            return nombre;
        }

        public int getTotalPuntuaciones() {
            return totalPuntuaciones;
        }
    }
}
