.class public abstract Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter$RunningBroadcastFilterHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    .line 13
    sput-object v0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter$RunningBroadcastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;

    .line 15
    return-void
.end method
