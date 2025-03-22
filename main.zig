const std = @import("std");

pub fn main() void {
    // Configurar la codificación UTF-8 en Windows
    if (@import("builtin").os.tag == .windows) {
        _ = std.os.windows.kernel32.SetConsoleOutputCP(65001);
    }

    // Crear un logger
    const logger = std.log.scoped(.mi_app);

    // Diferentes niveles de logging
    logger.info("Este es un mensaje informativo", .{});
    logger.warn("Este es un mensaje de advertencia", .{});
    logger.err("Este es un mensaje de error", .{});
    logger.debug("Este es un mensaje de depuración", .{});

    // Logging con variables
    const numero = 42;
    logger.info("El número es: {d}", .{numero});

    // Logging con múltiples variables
    const nombre = "Zig";
    const version = "0.11.0";
    logger.info("Bienvenido a {s} versión {s}", .{ nombre, version });
}
