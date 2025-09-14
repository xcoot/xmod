.class public final Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public algorithm:Ljava/lang/String;

.field public blobId:J

.field public digest:[B

.field public expiryTimeMillis:J

.field public label:Ljava/lang/CharSequence;

.field public tag:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x2

    .line 5
    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 7
    const-string v0, "SHA-256"

    .line 9
    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    .line 11
    return-void
.end method
