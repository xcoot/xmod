.class public final Lcom/android/server/notification/NotificationChannelLoggerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationChannelLogger;


# instance fields
.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# virtual methods
.method public final logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0x2000

    .line 14
    .line 15
    invoke-static {v0, v2}, Ljava/lang/Math;->floorMod(II)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isConversation()Z

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0, v2}, Ljava/lang/Math;->floorMod(II)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDemoted()Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    const/16 v0, 0xf6

    .line 44
    .line 45
    move v2, p3

    .line 46
    move-object v3, p4

    .line 47
    move/from16 v5, p5

    .line 48
    .line 49
    move/from16 v6, p6

    .line 50
    .line 51
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIZIZZ)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
