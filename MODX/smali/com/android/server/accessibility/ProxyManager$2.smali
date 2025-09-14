.class public final Lcom/android/server/accessibility/ProxyManager$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/ProxyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ProxyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$2;->this$0:Lcom/android/server/accessibility/ProxyManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final onVirtualDeviceClosed(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager$2;->this$0:Lcom/android/server/accessibility/ProxyManager;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnections(I)V

    .line 6
    return-void
.end method
