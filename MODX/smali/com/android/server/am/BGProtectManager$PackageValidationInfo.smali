.class public final Lcom/android/server/am/BGProtectManager$PackageValidationInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final privateFlagsMask:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->packageName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->privateFlagsMask:I

    .line 8
    return-void
.end method
