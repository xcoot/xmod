.class public final Lcom/android/server/storage/DeviceStorageMonitorService$State;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static isExhaustion:Z = false


# instance fields
.field public lastUsableBytes:J

.field public level:I


# direct methods
.method public static -$$Nest$smisEntering(III)Z
    .locals 0

    .line 1
    if-lt p2, p0, :cond_1

    .line 2
    .line 3
    if-lt p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    if-ne p1, p0, :cond_1

    .line 7
    .line 8
    :cond_0
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static -$$Nest$smisLeaving(III)Z
    .locals 0

    .line 1
    if-ge p2, p0, :cond_1

    .line 2
    .line 3
    if-ge p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    if-ne p1, p0, :cond_1

    .line 7
    .line 8
    :cond_0
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static -$$Nest$smlevelToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_5

    .line 3
    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p0, "FULL"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string p0, "LOW"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const-string p0, "WARNING"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    const-string p0, "CAUTION"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_4
    const-string p0, "NORMAL"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_5
    const-string p0, "UNKNOWN"

    .line 39
    .line 40
    :goto_0
    return-object p0
.end method
