.class public interface abstract Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
.end method

.method public abstract getPackageStates()Ljava/util/Map;
.end method
