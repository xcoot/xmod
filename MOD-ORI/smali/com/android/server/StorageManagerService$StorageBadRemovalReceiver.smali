.class public Lcom/android/server/StorageManagerService$StorageBadRemovalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string/jumbo p0, "msg"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "StorageBadRemovalReceiver msg : "

    .line 11
    .line 12
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v0, "StorageManagerService"

    .line 23
    .line 24
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const-string/jumbo p2, "reboot"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    new-instance p0, Ljava/lang/Thread;

    .line 37
    .line 38
    new-instance p2, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-direct {p2, v0, p1}, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method
