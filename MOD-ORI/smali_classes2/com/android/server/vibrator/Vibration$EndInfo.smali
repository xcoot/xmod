.class public final Lcom/android/server/vibrator/Vibration$EndInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final endedBy:Lcom/android/server/vibrator/Vibration$CallerInfo;

.field public final status:Lcom/android/server/vibrator/Vibration$Status;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/Vibration$Status;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 16
    .line 17
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/Vibration$Status;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/Vibration$Status;

    .line 26
    .line 27
    if-ne p0, p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v0, v2

    .line 31
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/Vibration$Status;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 4
    .line 5
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EndInfo{status="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/Vibration$Status;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", endedBy="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
