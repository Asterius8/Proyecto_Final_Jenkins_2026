
const request = require("supertest");
const app = require("../app");

describe("Pruebas de la API", () => {
    test("GET /api/health debe responder con código 200", async () => {
        const response = await request(app).get("/api/health");

        expect(response.statusCode).toBe(200);
    });

    test("GET /api/health debe confirmar que la API funciona", async () => {
        const response = await request(app).get("/api/health");

        expect(response.body).toEqual({
            status: "ok",
            message: "API funcionando correctamente"
        });
    });
});
