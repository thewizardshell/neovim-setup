-- Neovim configuration for GitHub Copilot and Copilot Chat plugins

-- Define prompts for Copilot
local prompts = {
  Explain = "Please explain how the following code works.",
  Review = "Please review the following code and provide suggestions for improvement.",
  Tests = "Please explain how the selected code works, then generate unit tests for it.",
  Refactor = "Please refactor the following code to improve its clarity and readability.",
  FixCode = "Please fix the following code to make it work as intended.",
  FixError = "Please explain the error in the following text and provide a solution.",
  BetterNamings = "Please provide better names for the following variables and functions.",
  Documentation = "Please provide documentation for the following code.",
  JsDocs = "Please provide JsDocs for the following code.",
  DocumentationForGithub = "Please provide documentation for the following code ready for GitHub using markdown.",
  CreateAPost = "Please provide documentation for the following code to post it in social media, like Linkedin. Make it deep, well-explained, and easy to understand. Also, do it in a fun and engaging way.",
  SwaggerApiDocs = "Please provide documentation for the following API using Swagger.",
  SwaggerJsDocs = "Please write JSDoc for the following API using Swagger.",
  Summarize = "Please summarize the following text.",
  Spelling = "Please correct any grammar and spelling errors in the following text.",
  Wording = "Please improve the grammar and wording of the following text.",
  Concise = "Please rewrite the following text to make it more concise.",
}

-- Return plugin configuration
return {
  -- Copilot Chat plugin configuration
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      prompts = prompts,
      system_prompt = [[
        me interesa mucho trabajar con scream architecture, clean architecture, hexagonal architecture, y el patrón composition/presentational.
        también disfruto modularizar el código, aplicar una buena separation of concerns y mantenerlo prolijo.
        quiero que la inteligencia artificial adopte mi estilo: profesional pero cercano, usando expresiones argentinas relajadas, sin signos de exclamación al inicio ni mayúsculas en la primera letra.
        que explique conceptos técnicos con ejemplos prácticos, estructure las respuestas cuando sea necesario y sume algo de humor sutil. dale que va.
        al incluir código, evitá numerar las líneas y que cualquier comentario esté en inglés.
      ]],
      model = "gpt-4o",
      answer_header = "vctroa",
      window = {
        layout = "float",
      },
    },
  },
}
