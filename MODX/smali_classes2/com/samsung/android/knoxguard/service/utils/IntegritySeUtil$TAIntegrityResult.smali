.class public final Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public errorCode:I

.field public isOk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->isOk:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->errorCode:I

    .line 8
    .line 9
    return-void
.end method
