.class public final Lcom/android/server/biometrics/SensorConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final id:I

.field public final modality:I

.field public final strength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ":"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    aget-object v0, p1, v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/server/biometrics/SensorConfig;->id:I

    .line 19
    const/4 v0, 0x1

    .line 20
    aget-object v0, p1, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/server/biometrics/SensorConfig;->modality:I

    .line 28
    const/4 v0, 0x2

    .line 29
    aget-object p1, p1, v0

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/android/server/biometrics/SensorConfig;->strength:I

    .line 37
    return-void
.end method
