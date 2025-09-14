.class public abstract Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 9
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 11
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    .line 13
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mIsAppCastEnabled:Z

    .line 16
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackage:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    .line 20
    return-void
.end method
