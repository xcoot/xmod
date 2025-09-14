.class public final Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/compat/OverrideValidatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/OverrideValidatorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;->this$0:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 2
    .line 3
    new-instance p1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;->this$0:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string/jumbo v0, "force_non_debuggable_final_build_for_compat"

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    move v1, v0

    .line 21
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    .line 22
    .line 23
    return-void
.end method
