.class public final Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public providerId:I

.field public final request:Landroid/net/NetworkRequest;

.field public requested:Z

.field public score:I


# direct methods
.method public constructor <init>(Landroid/net/NetworkRequest;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5
    .line 6
    iput p2, p0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    .line 10
    .line 11
    iput p3, p0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->providerId:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", score="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", requested="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean p0, p0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    .line 30
    .line 31
    const-string/jumbo v1, "}"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
