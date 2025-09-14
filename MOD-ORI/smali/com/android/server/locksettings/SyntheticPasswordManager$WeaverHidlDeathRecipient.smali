.class public final Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public deathCount:I

.field public final synthetic this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->deathCount:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->deathCount:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->deathCount:I

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string p2, "Weaver HIDL HAL died. "

    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->deathCount:I

    .line 15
    .line 16
    const-string/jumbo v0, "times"

    .line 17
    .line 18
    .line 19
    const-string v1, "SyntheticPasswordManager"

    .line 20
    .line 21
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverHidlService:Lcom/android/server/locksettings/WeaverHidlAdapter;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 29
    .line 30
    check-cast p1, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    const-string p2, "Failed to unlinkToDeath"

    .line 38
    .line 39
    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/IWeaver;

    .line 46
    .line 47
    return-void
.end method
