.class public final Lcom/android/server/smartclip/SpenThemeManager$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$1;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo p2, "package removed = "

    .line 5
    .line 6
    .line 7
    const-string v0, "SpenThemeManager"

    .line 8
    .line 9
    invoke-static {p2, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$1;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mPackageRemovedHandler:Lcom/android/server/smartclip/SpenThemeManager$2;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
