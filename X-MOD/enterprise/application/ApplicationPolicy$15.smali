.class public abstract synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $SwitchMap$android$net$NetworkInfo$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/net/NetworkInfo$State;->values()[Landroid/net/NetworkInfo$State;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$15;->$SwitchMap$android$net$NetworkInfo$State:[I

    .line 10
    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 12
    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$15;->$SwitchMap$android$net$NetworkInfo$State:[I

    .line 21
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 23
    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    :catch_1
    return-void
.end method
