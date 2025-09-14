.class public final Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;


# instance fields
.field public final mPhoneId:I

.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 6
    iput p2, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    .line 8
    return-void
.end method


# virtual methods
.method public final onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 3
    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 8
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    .line 10
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    .line 12
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    monitor-exit p2

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method
