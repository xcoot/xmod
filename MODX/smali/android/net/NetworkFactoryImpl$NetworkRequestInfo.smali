.class public final Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final request:Landroid/net/NetworkRequest;

.field public requested:Z


# direct methods
.method public constructor <init>(Landroid/net/NetworkRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->requested:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", requested="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-boolean p0, p0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->requested:Z

    .line 21
    const-string/jumbo v1, "}"

    .line 24
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
