-- Generated by CSharp.lua Compiler 1.0.0.0
local System = System;
local CSharpLuaLuaAst;
local CSharpLuaLuaAstLuaStatementSyntax;
local CSharpLuaLuaAstLuaSyntaxNode;
System.usingDeclare(function (global) 
    CSharpLuaLuaAst = CSharpLua.LuaAst;
    CSharpLuaLuaAstLuaStatementSyntax = CSharpLua.LuaAst.LuaStatementSyntax;
    CSharpLuaLuaAstLuaSyntaxNode = CSharpLua.LuaAst.LuaSyntaxNode;
end);
System.namespace("CSharpLua.LuaAst", function (namespace) 
    namespace.class("LuaStatementSyntax", function (namespace) 
        namespace.class("EmptyLuaStatementSyntax", function (namespace) 
            local Render;
            Render = function (this, renderer) 
            end;
            return {
                __inherits__ = {
                    CSharpLuaLuaAst.LuaStatementSyntax
                }, 
                Render = Render
            };
        end);
        local getSemicolonToken, Empty, __staticCtor__;
        getSemicolonToken = function (this) 
            return CSharpLuaLuaAstLuaSyntaxNode.Tokens.Semicolon;
        end;
        __staticCtor__ = function (this) 
            Empty = CSharpLuaLuaAstLuaStatementSyntax.EmptyLuaStatementSyntax();
            this.Empty = Empty;
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaSyntaxNode
            }, 
            getSemicolonToken = getSemicolonToken, 
            __staticCtor__ = __staticCtor__
        };
    end);
    namespace.class("LuaExpressionStatementSyntax", function (namespace) 
        local Render, __ctor__;
        Render = function (this, renderer) 
            renderer:Render2(this);
        end;
        __ctor__ = function (this, expression) 
            if expression == nil then
                System.throw(System.ArgumentNullException("expression"));
            end
            this.Expression = expression;
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaStatementListSyntax", function (namespace) 
        local Render, __ctor__;
        Render = function (this, renderer) 
            renderer:Render19(this);
        end;
        __ctor__ = function (this) 
            this.Statements = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaStatementSyntax)();
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaReturnStatementSyntax", function (namespace) 
        local getReturnKeyword, Render, __ctor__;
        getReturnKeyword = function (this) 
            return "return" --[[Keyword.Return]];
        end;
        Render = function (this, renderer) 
            renderer:Render26(this);
        end;
        __ctor__ = function (this, expression) 
            this.Expression = expression;
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            getReturnKeyword = getReturnKeyword, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaMultipleReturnStatementSyntax", function (namespace) 
        local getReturnKeyword, Render, __ctor__;
        getReturnKeyword = function (this) 
            return "return" --[[Keyword.Return]];
        end;
        Render = function (this, renderer) 
            renderer:Render25(this);
        end;
        __ctor__ = function (this) 
            this.Expressions = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaExpressionSyntax)();
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            getReturnKeyword = getReturnKeyword, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaBreakStatementSyntax", function (namespace) 
        local getBreakKeyword, Render, Statement, __staticCtor__, __ctor__;
        getBreakKeyword = function (this) 
            return "break" --[[Keyword.Break]];
        end;
        Render = function (this, renderer) 
            renderer:Render49(this);
        end;
        __staticCtor__ = function (this) 
            Statement = CSharpLuaLuaAst.LuaBreakStatementSyntax:new(1);
            this.Statement = Statement;
        end;
        __ctor__ = function (this) 
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            getBreakKeyword = getBreakKeyword, 
            Render = Render, 
            __staticCtor__ = __staticCtor__, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaContinueAdapterStatementSyntax", function (namespace) 
        local getBreak, Render, Statement, __staticCtor__, __ctor__;
        getBreak = function (this) 
            return CSharpLuaLuaAst.LuaBreakStatementSyntax.Statement;
        end;
        Render = function (this, renderer) 
            renderer:Render50(this);
        end;
        __staticCtor__ = function (this) 
            Statement = CSharpLuaLuaAst.LuaContinueAdapterStatementSyntax:new(1);
            this.Statement = Statement;
        end;
        __ctor__ = function (this) 
            this.Assignment = CSharpLuaLuaAst.LuaExpressionStatementSyntax(CSharpLuaLuaAst.LuaAssignmentExpressionSyntax(CSharpLuaLuaAst.LuaIdentifierNameSyntax.Continue, CSharpLuaLuaAst.LuaIdentifierNameSyntax.True));
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            getBreak = getBreak, 
            Render = Render, 
            __staticCtor__ = __staticCtor__, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaBlankLinesStatement", function (namespace) 
        local Render, One, __staticCtor__, __ctor__;
        Render = function (this, renderer) 
            renderer:Render51(this);
        end;
        __staticCtor__ = function (this) 
            One = CSharpLuaLuaAst.LuaBlankLinesStatement:new(1, 1);
            this.One = One;
        end;
        __ctor__ = function (this, count) 
            this.Count = count;
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            Count = 0, 
            Render = Render, 
            __staticCtor__ = __staticCtor__, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaShortCommentStatement", function (namespace) 
        local getSingleCommentToken, Render, __ctor__;
        getSingleCommentToken = function (this) 
            return "--" --[[Tokens.ShortComment]];
        end;
        Render = function (this, renderer) 
            renderer:Render52(this);
        end;
        __ctor__ = function (this, comment) 
            this.Comment = comment;
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            getSingleCommentToken = getSingleCommentToken, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaLongCommentStatement", function (namespace) 
        local getOpenCommentToken, getCloseCommentToken, Render, __ctor__;
        getOpenCommentToken = function (this) 
            return "--[[" --[[Tokens.OpenLongComment]];
        end;
        getCloseCommentToken = function (this) 
            return "--]]" --[[Tokens.CloseLongComment]];
        end;
        Render = function (this, renderer) 
            renderer:Render53(this);
        end;
        __ctor__ = function (this, comment) 
            this.Comment = comment;
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            getOpenCommentToken = getOpenCommentToken, 
            getCloseCommentToken = getCloseCommentToken, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaGotoStatement", function (namespace) 
        local getGotoKeyword, Render, __ctor__;
        getGotoKeyword = function (this) 
            return "goto" --[[Keyword.Goto]];
        end;
        Render = function (this, renderer) 
            renderer:Render55(this);
        end;
        __ctor__ = function (this, identifier) 
            if identifier == nil then
                System.throw(System.ArgumentNullException("identifier"));
            end
            this.Identifier = identifier;
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            getGotoKeyword = getGotoKeyword, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaGotoCaseAdapterStatement", function (namespace) 
        local Render, __ctor__;
        Render = function (this, renderer) 
            renderer:Render57(this);
        end;
        __ctor__ = function (this, identifier) 
            if identifier == nil then
                System.throw(System.ArgumentNullException("identifier"));
            end

            local assignment = CSharpLuaLuaAst.LuaAssignmentExpressionSyntax(identifier, CSharpLuaLuaAst.LuaIdentifierNameSyntax.True);
            this.Assignment = CSharpLuaLuaAst.LuaExpressionStatementSyntax(assignment);
            this.GotoStatement = CSharpLuaLuaAst.LuaGotoStatement(identifier);
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaLabeledStatement", function (namespace) 
        local getPrefixToken, getSuffixToken, Render, __ctor__;
        getPrefixToken = function (this) 
            return "::" --[[Tokens.Label]];
        end;
        getSuffixToken = function (this) 
            return "::" --[[Tokens.Label]];
        end;
        Render = function (this, renderer) 
            renderer:Render56(this);
        end;
        __ctor__ = function (this, identifier, statement) 
            if identifier == nil then
                System.throw(System.ArgumentNullException("identifier"));
            end
            this.Identifier = identifier;
            this.Statement = statement;
        end;
        return {
            __inherits__ = {
                CSharpLuaLuaAst.LuaStatementSyntax
            }, 
            getPrefixToken = getPrefixToken, 
            getSuffixToken = getSuffixToken, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
end);
