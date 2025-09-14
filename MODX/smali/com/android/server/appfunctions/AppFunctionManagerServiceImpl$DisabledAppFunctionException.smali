.class Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;
.super Ljava/lang/RuntimeException;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "The app function is disabled"

    invoke-direct {p0, v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
