.class public final Lcom/android/server/accessibility/UiAutomationManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/UiAutomationManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/UiAutomationManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager$1;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$1;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager$1;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    .line 17
    const-string p0, "UiAutomationManager"

    .line 19
    const-string v0, "UiAutomation service owner died"

    .line 21
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method
