.class public final Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sPool:Lcom/android/server/usage/AppStandbyController$Pool;


# instance fields
.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Pool;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    new-array v1, v1, [Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/usage/AppStandbyController$Pool;-><init>([Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    .line 11
    .line 12
    return-void
.end method
