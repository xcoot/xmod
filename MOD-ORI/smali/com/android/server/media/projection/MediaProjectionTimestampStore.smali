.class public final Lcom/android/server/media/projection/MediaProjectionTimestampStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public final mInstantSource:Ljava/time/InstantSource;

.field public final mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mTimestampLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstanceLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/time/InstantSource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mInstantSource:Ljava/time/InstantSource;

    .line 14
    .line 15
    return-void
.end method
