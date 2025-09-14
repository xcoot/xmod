.class public final Lcom/android/server/companion/devicepresence/ObservableUuid;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mTimeApprovedMs:J

.field public final mUserId:I

.field public final mUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUserId:I

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 8
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    .line 10
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mTimeApprovedMs:J

    .line 16
    return-void
.end method
