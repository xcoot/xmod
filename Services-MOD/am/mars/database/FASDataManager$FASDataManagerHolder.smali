.class public abstract Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/mars/database/FASDataManager;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/android/server/am/mars/database/FASDataManager;->context:Landroid/content/Context;

    .line 9
    iput-object v1, v0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    .line 11
    iput-object v1, v0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    .line 13
    sput-object v0, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;

    .line 15
    return-void
.end method
