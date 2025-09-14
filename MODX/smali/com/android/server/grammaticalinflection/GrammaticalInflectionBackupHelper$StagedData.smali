.class public final Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCreationTimeMillis:J

.field public final mPackageStates:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;->mCreationTimeMillis:J

    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    .line 13
    return-void
.end method
