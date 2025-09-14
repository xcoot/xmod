.class public final Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final binder:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->binder:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->binder:Landroid/os/IBinder;

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
