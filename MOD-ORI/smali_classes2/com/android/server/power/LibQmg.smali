.class public Lcom/android/server/power/LibQmg;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final fname:Ljava/lang/String;

.field public handle:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static native qmgCheckSupportQmg()I
.end method

.method public static native qmgClose(J)I
.end method

.method public static native qmgGetDelayTime(J)I
.end method

.method public static native qmgGetHeight(J)I
.end method

.method public static native qmgGetWidth(J)I
.end method

.method public static native qmgLoadBitmap(JLandroid/graphics/Bitmap;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native qmgOpen(Ljava/lang/String;)J
.end method


# virtual methods
.method public final ensureQmgHandle()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/server/power/LibQmg;->qmgOpen(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "fname: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " w: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/android/server/power/LibQmg;->handle:J

    .line 22
    .line 23
    invoke-static {v1, v2}, Lcom/android/server/power/LibQmg;->qmgGetWidth(J)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " h: "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/android/server/power/LibQmg;->handle:J

    .line 39
    .line 40
    invoke-static {v1, v2}, Lcom/android/server/power/LibQmg;->qmgGetHeight(J)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, " d: "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 53
    .line 54
    .line 55
    iget-wide v1, p0, Lcom/android/server/power/LibQmg;->handle:J

    .line 56
    .line 57
    invoke-static {v1, v2}, Lcom/android/server/power/LibQmg;->qmgGetDelayTime(J)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-gtz v1, :cond_0

    .line 62
    .line 63
    const/16 v1, 0x21

    .line 64
    .line 65
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " handle: "

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-wide v1, p0, Lcom/android/server/power/LibQmg;->handle:J

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
