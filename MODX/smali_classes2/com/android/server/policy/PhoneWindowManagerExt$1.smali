.class public final Lcom/android/server/policy/PhoneWindowManagerExt$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const p2, 0x10008000

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    const-string p2, "com.samsung.settings.CUSTOMIZE_KEY_SETTINGS"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    new-instance p2, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, ":settings:fragment_args_key"

    .line 23
    .line 24
    const-string/jumbo v1, "modifier_keys_esc"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, ":settings:show_fragment_args"

    .line 31
    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
