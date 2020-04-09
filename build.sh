#!/bin/bash
set -e

dotnet tool restore
dotnet restore FSharp.Data.Npgsql.sln
dotnet build -c Release FSharp.Data.Npgsql.sln
dotnet paket pack .publish
