import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

const Register = () => {
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [errorMessage, setErrorMessage] = useState("");
  const [successMessage, setSuccessMessage] = useState("");

  const [formData, setFormData] = useState({
    name: "",
    email: "",
  });
  const navigate = useNavigate();

  const handlePasswordChange = (e) => {
    setPassword(e.target.value);
    validatePasswords(e.target.value, confirmPassword);
  };

  const handleConfirmPasswordChange = (e) => {
    setConfirmPassword(e.target.value);
    validatePasswords(password, e.target.value);
  };

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

  const validatePasswords = (password, confirmPassword) => {
    if (password !== confirmPassword) {
      setErrorMessage("Las contraseñas no coinciden.");
    } else {
      setErrorMessage("");
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setErrorMessage(""); // Limpia los mensajes anteriores
    setSuccessMessage(""); // Limpia los mensajes anteriores

    if (!errorMessage && password === confirmPassword) {
      try {
        const response = await fetch("http://localhost:8000/users", {
          method: "POST",
          headers: {
            "Content-Type": "application/json", // Se agregó este encabezado
          },
          body: JSON.stringify({
            name: formData.name,
            email: formData.email,
            password: password,
          }),
        });

        if (!response.ok) {
          const errorData = await response.json();
          setErrorMessage(errorData.message || "Error al crear el usuario.");
          return;
        }

        setSuccessMessage("Usuario creado con éxito.");
        setFormData({ name: "", email: "" });
        setPassword("");
        setConfirmPassword("");
        navigate("/login");
      } catch (error) {
        setErrorMessage("Error al conectarse con el servidor.");
      }
    }
  };

  const isFormValid =
    formData.name &&
    formData.email &&
    password &&
    confirmPassword &&
    !errorMessage;

  // Nueva variable para el motivo de deshabilitación
  let disableReason = "";
  if (!formData.name || !formData.email || !password || !confirmPassword) {
    disableReason = "Por favor, complete todos los campos.";
  } else if (errorMessage) {
    disableReason = errorMessage; // "Las contraseñas no coinciden."
  }

  return (
    <div style={styles.container}>
      <div style={styles.formContainer}>
        <h2 style={styles.title}>Crea tu cuenta nueva</h2>
        <form style={styles.form} onSubmit={handleSubmit}>
          <label style={styles.label}>
            Nombre de usuario:
            <input
              type="text"
              name="name"
              style={styles.input}
              value={formData.name}
              onChange={handleInputChange}
            />
          </label>
          <label style={styles.label}>
            Correo electrónico:
            <input
              type="email"
              name="email"
              style={styles.input}
              value={formData.email}
              onChange={handleInputChange}
            />
          </label>
          <label style={styles.label}>
            Contraseña:
            <input
              type="password"
              name="password"
              style={styles.input}
              value={password}
              onChange={handlePasswordChange}
            />
          </label>
          <label style={styles.label}>
            Verificar contraseña:
            <input
              type="password"
              name="confirmPassword"
              style={styles.input}
              value={confirmPassword}
              onChange={handleConfirmPasswordChange}
            />
          </label>
          {errorMessage && <p style={styles.error}>{errorMessage}</p>}
          {successMessage && <p style={styles.success}>{successMessage}</p>}
          <div style={styles.buttonContainer}>
            <button
              style={{
                ...styles.button,
                backgroundColor: isFormValid ? "#1a1a2e" : "#ccc",
                cursor: isFormValid ? "pointer" : "not-allowed",
              }}
              type="submit"
              disabled={!isFormValid}
              title={!isFormValid ? disableReason : ""}
            >
              Crear nuevo usuario
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

const styles = {
  container: {
    padding: "20px",
    display: "flex",
    justifyContent: "center",
    alignItems: "start",
    height: "100vh",
    backgroundColor: "#f5f5f5",
    fontFamily: "'Roboto', sans-serif",
  },
  formContainer: {
    textAlign: "center",
    backgroundColor: "white",
    padding: "30px",
    borderRadius: "10px",
    boxShadow: "0 4px 10px rgba(0, 0, 0, 0.1)",
    maxWidth: "400px",
    width: "90%",
  },
  title: {
    fontSize: "24px",
    color: "#1a1a2e",
    marginBottom: "20px",
  },
  form: {
    display: "flex",
    flexDirection: "column",
    gap: "15px",
  },
  label: {
    fontSize: "16px",
    color: "#1a1a2e",
    textAlign: "left",
    fontWeight: "500",
  },
  input: {
    width: "100%",
    padding: "10px",
    marginTop: "5px",
    borderRadius: "5px",
    border: "1px solid #ccc",
    fontSize: "16px",
    fontFamily: "'Roboto', sans-serif",
  },
  buttonContainer: {
    display: "flex",
    justifyContent: "center",
    marginTop: "20px",
    gap: "10px",
  },
  button: {
    padding: "10px 20px",
    fontSize: "16px",
    border: "none",
    borderRadius: "5px",
    cursor: "pointer",
    backgroundColor: "#1a1a2e",
    color: "white",
    fontFamily: "'Roboto', sans-serif",
    transition: "background-color 0.3s",
  },
  error: {
    color: "red",
    fontSize: "14px",
    marginTop: "-10px",
  },
  success: {
    color: "green",
    fontSize: "14px",
    marginTop: "-10px",
  },
};

export default Register;
