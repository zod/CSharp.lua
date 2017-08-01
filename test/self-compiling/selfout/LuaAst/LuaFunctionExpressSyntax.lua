-- Generated by CSharp.lua Compiler 1.0.0.0
local System = System
local CSharpLuaLuaAst
local CSharpLuaLuaAstLuaSyntaxNode
System.usingDeclare(function (global) 
  CSharpLuaLuaAst = CSharpLua.LuaAst
  CSharpLuaLuaAstLuaSyntaxNode = CSharpLua.LuaAst.LuaSyntaxNode
end)
System.namespace("CSharpLua.LuaAst", function (namespace) 
  namespace.class("LuaFunctionExpressionSyntax", function (namespace) 
    local getFunctionKeyword, AddParameter, AddParameters, AddParameter1, AddStatement, AddStatement1, AddStatements, Render, 
    __init__, __ctor__
    __init__ = function (this) 
      this.ParameterList = CSharpLuaLuaAst.LuaParameterListSyntax()
      this.Body = System.create(CSharpLuaLuaAst.LuaBlockSyntax(), function (default) 
        default.OpenBraceToken = CSharpLuaLuaAstLuaSyntaxNode.Tokens.getEmpty()
        default.CloseBraceToken = "end" --[[Keyword.End]]
      end)
    end
    __ctor__ = function (this) 
      __init__(this)
      CSharpLuaLuaAst.LuaExpressionSyntax.__ctor__(this)
    end
    getFunctionKeyword = function (this) 
      return "function" --[[Keyword.Function]]
    end
    AddParameter = function (this, parameter) 
      this.ParameterList.Parameters:Add(parameter)
    end
    AddParameters = function (this, parameters) 
      this.ParameterList.Parameters:AddRange(parameters)
    end
    AddParameter1 = function (this, identifier) 
      AddParameter(this, CSharpLuaLuaAst.LuaParameterSyntax(identifier))
    end
    AddStatement = function (this, statement) 
      this.Body.Statements:Add(statement)
    end
    AddStatement1 = function (this, expression) 
      AddStatement(this, CSharpLuaLuaAst.LuaExpressionStatementSyntax(expression))
    end
    AddStatements = function (this, statements) 
      this.Body.Statements:AddRange(statements)
    end
    Render = function (this, renderer) 
      renderer:Render9(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      getFunctionKeyword = getFunctionKeyword, 
      HasYield = false, 
      TempIndex = 0, 
      AddParameter = AddParameter, 
      AddParameters = AddParameters, 
      AddParameter1 = AddParameter1, 
      AddStatement = AddStatement, 
      AddStatement1 = AddStatement1, 
      AddStatements = AddStatements, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)
  namespace.class("LuaConstructorAdapterExpressionSyntax", function (namespace) 
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaFunctionExpressionSyntax
        }
      end, 
      IsInvokeThisCtor = false
    }
  end)
  namespace.class("LuaCheckReturnFunctionExpressionSyntax", function (namespace) 
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaFunctionExpressionSyntax
        }
      end
    }
  end)
  namespace.class("LuaTryAdapterExpressionSyntax", function (namespace) 
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaCheckReturnFunctionExpressionSyntax
        }
      end
    }
  end)
  namespace.class("LuaUsingAdapterExpressionSyntax", function (namespace) 
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaCheckReturnFunctionExpressionSyntax
        }
      end
    }
  end)
end)
