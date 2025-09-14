.class public final Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
