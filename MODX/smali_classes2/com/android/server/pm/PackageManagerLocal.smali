.class public interface abstract Lcom/android/server/pm/PackageManagerLocal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1


# virtual methods
.method public abstract addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V
.end method

.method public abstract clearOverrideSigningDetails()V
.end method

.method public abstract reconcileSdkData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V
.end method

.method public abstract withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
.end method

.method public abstract withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
.end method

.method public abstract withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
.end method
