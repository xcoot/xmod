.class public final Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->onScreenChanged(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-virtual {p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->onScreenChanged(Z)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method
