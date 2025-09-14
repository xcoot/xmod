.class public final synthetic Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/SnoozeHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/SnoozeHelper;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/SnoozeHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/SnoozeHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;->f$2:J

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p0, "Scheduling evaluate for "

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v6, v0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    .line 21
    .line 22
    invoke-virtual {v6, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 23
    .line 24
    .line 25
    sget-boolean v6, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    const-string v6, "SnoozeHelper"

    .line 30
    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v7, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Ljava/util/Date;

    .line 37
    .line 38
    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    iget-object p0, v0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method
