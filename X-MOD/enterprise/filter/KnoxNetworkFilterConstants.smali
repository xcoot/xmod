.class public abstract Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "com.samsung.android.knox.app.networkfilter"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    .line 10
    return-void
.end method
