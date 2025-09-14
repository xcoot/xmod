.class public final Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntegerDefaultKeyMap:Ljava/util/Map;

.field public mPref:Landroid/content/SharedPreferences;

.field public final mSharedPrefKeyTypeMap:Ljava/util/Map;


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
    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string/jumbo p0, "mw_immersive_mode"

    .line 21
    .line 22
    .line 23
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method
