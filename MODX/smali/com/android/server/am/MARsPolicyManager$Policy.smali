.class public final Lcom/android/server/am/MARsPolicyManager$Policy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final action:I

.field public enabled:Z

.field public final name:Ljava/lang/String;

.field public final num:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 8
    iput-boolean p4, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 10
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    .line 12
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "("

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 18
    const-string v1, ")"

    .line 20
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
