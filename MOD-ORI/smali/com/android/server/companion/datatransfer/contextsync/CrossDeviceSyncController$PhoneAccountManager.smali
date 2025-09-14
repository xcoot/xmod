.class public final Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConnectionServiceComponentName:Landroid/content/ComponentName;

.field public final mPhoneAccountHandles:Ljava/util/Map;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 10
    .line 11
    const-class v0, Landroid/telecom/TelecomManager;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/telecom/TelecomManager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 20
    .line 21
    new-instance v0, Landroid/content/ComponentName;

    .line 22
    .line 23
    const-class v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    .line 24
    .line 25
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mConnectionServiceComponentName:Landroid/content/ComponentName;

    .line 29
    .line 30
    return-void
.end method

.method public static createPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/telecom/PhoneAccount;
    .locals 2

    .line 1
    const-string/jumbo v0, "com.android.server.companion.datatransfer.contextsync.extra.CALL_FACILITATOR_ID"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "com.android.server.companion.datatransfer.contextsync.extra.ASSOCIATION_ID"

    .line 5
    .line 6
    .line 7
    invoke-static {p3, v0, p2, v1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance p3, Landroid/telecom/PhoneAccount$Builder;

    .line 12
    .line 13
    invoke-direct {p3, p0, p1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/telecom/PhoneAccount$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/PhoneAccount$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p4, :cond_0

    .line 21
    .line 22
    const-string/jumbo p1, "tel"

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string/jumbo p1, "sip"

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccount$Builder;->setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 p1, 0x3

    .line 38
    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
