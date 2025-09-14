.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 6
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->onPromptSettingsValueChanged()V

    .line 9
    return-void
.end method
