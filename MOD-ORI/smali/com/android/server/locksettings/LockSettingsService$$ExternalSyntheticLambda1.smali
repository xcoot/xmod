.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEscrowTokenActivated(JI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;->onWeakEscrowTokenActivated(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "LockSettingsService"

    .line 9
    .line 10
    const-string p2, "Exception while notifying weak escrow token has been activated"

    .line 11
    .line 12
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
