.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic f$1:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda13;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    .line 13
    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    .line 20
    return-void
.end method
