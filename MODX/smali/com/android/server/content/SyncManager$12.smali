.class public final Lcom/android/server/content/SyncManager$12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/content/SyncManager$12;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/content/SyncManager$12;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    check-cast p1, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 8
    check-cast p2, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 10
    iget p0, p2, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 12
    iget v0, p1, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 14
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 20
    iget-wide v0, p2, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 22
    iget-wide p0, p1, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 24
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 27
    move-result p0

    .line 28
    :cond_0
    return p0

    .line 29
    :pswitch_0
    check-cast p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 31
    check-cast p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 33
    iget p0, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 35
    iget v0, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 37
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 43
    iget-wide v0, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 45
    iget-wide p0, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 47
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 50
    move-result p0

    .line 51
    :cond_1
    return p0

    .line 52
    :pswitch_1
    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 54
    check-cast p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 56
    iget-object p0, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 58
    check-cast p0, Landroid/content/SyncAdapterType;

    .line 60
    iget-object p0, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 62
    iget-object p1, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 64
    check-cast p1, Landroid/content/SyncAdapterType;

    .line 66
    iget-object p1, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 71
    move-result p0

    .line 72
    return p0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
