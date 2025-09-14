.class public final Lcom/android/server/notification/InlineReplyUriRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKey:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mUris:Landroid/util/ArraySet;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPermissionOwner:Landroid/os/IBinder;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUris:Landroid/util/ArraySet;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUser:Landroid/os/UserHandle;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPackageName:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mKey:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method
