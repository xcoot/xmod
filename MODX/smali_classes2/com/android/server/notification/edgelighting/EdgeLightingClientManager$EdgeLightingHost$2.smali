.class public final Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->val$packageName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->val$packageName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "com.android.systemui"

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v1, -0x2

    .line 25
    const-string v2, "edge_lighting"

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {p0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-ne p0, v3, :cond_0

    .line 33
    .line 34
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 35
    .line 36
    const-string p0, "EdgeLightingClientManager"

    .line 37
    .line 38
    const-string/jumbo v1, "startEdgeLightingService"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 45
    .line 46
    sget-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method
