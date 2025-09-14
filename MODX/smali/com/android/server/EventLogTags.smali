.class public abstract Lcom/android/server/EventLogTags;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x6b8f

    .line 3
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 10
    return-void
.end method

.method public static writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v5

    .line 17
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v6

    .line 21
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v7

    .line 25
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v8

    .line 29
    move-object v2, p2

    .line 30
    move-object v4, p4

    .line 31
    move-object/from16 v9, p9

    .line 33
    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    const/16 v1, 0xabf

    .line 39
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 42
    return-void
.end method
