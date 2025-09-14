.class public interface abstract Lcom/android/server/pm/pkg/SharedLibrary;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract getAllCodePaths()Ljava/util/List;
.end method

.method public abstract getDeclaringPackage()Landroid/content/pm/VersionedPackage;
.end method

.method public abstract getDependencies()Ljava/util/List;
.end method

.method public abstract getDependentPackages()Ljava/util/List;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract getVersion()J
.end method

.method public abstract isNative()Z
.end method
