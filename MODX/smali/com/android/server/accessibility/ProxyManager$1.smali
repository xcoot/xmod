.class public final Lcom/android/server/accessibility/ProxyManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic val$client:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ProxyManager;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$1;->this$0:Lcom/android/server/accessibility/ProxyManager;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$client:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 8
    iput p3, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$displayId:I

    .line 10
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$client:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 3
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$1;->this$0:Lcom/android/server/accessibility/ProxyManager;

    .line 13
    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$displayId:I

    .line 15
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    .line 18
    return-void
.end method
