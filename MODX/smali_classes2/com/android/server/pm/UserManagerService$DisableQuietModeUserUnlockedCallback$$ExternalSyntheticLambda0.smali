.class public final synthetic Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->mTarget:Landroid/content/IntentSender;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string v0, "UserManagerService"

    .line 35
    .line 36
    const-string v1, "Failed to start the target in the callback"

    .line 37
    .line 38
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method
