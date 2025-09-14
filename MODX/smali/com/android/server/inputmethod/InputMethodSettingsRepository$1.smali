.class public final Lcom/android/server/inputmethod/InputMethodSettingsRepository$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSettingsRepository$1;->val$handler:Landroid/os/Handler;

    .line 6
    return-void
.end method


# virtual methods
.method public final onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 3
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository$1$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository$1$$ExternalSyntheticLambda0;-><init>(I)V

    .line 8
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSettingsRepository$1;->val$handler:Landroid/os/Handler;

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method
