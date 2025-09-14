.class public final Lcom/android/server/enterprise/proxy/LocalProxyManager$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic val$shouldAdd:Z


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->val$shouldAdd:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 1

    .line 1
    const-string p0, "Fail to update wifi proxy - reason: "

    .line 3
    const-string v0, "LocalProxyManager"

    .line 5
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public final onSuccess()V
    .locals 2

    .line 1
    const-string v0, "LocalProxyManager"

    .line 3
    const-string v1, "Wifi proxy updated successfully"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->val$shouldAdd:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    .line 17
    :cond_0
    return-void
.end method
