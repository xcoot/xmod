.class public final Lcom/android/server/accounts/AccountAuthenticatorCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accounts/IAccountAuthenticatorCache;


# static fields
.field public static final sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/accounts/AccountAuthenticatorCache;->sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v5, Lcom/android/server/accounts/AccountAuthenticatorCache;->sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    .line 3
    const-string v2, "android.accounts.AccountAuthenticator"

    .line 5
    const-string v3, "android.accounts.AccountAuthenticator"

    .line 7
    const-string v4, "account-authenticator"

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object p0, Lcom/android/internal/R$styleable;->AccountAuthenticator:[I

    .line 3
    invoke-virtual {p1, p3, p0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x2

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 16
    move-result v3

    .line 17
    const/4 p3, 0x1

    .line 18
    invoke-virtual {p0, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 21
    move-result v4

    .line 22
    const/4 p3, 0x3

    .line 23
    invoke-virtual {p0, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 26
    move-result v5

    .line 27
    const/4 p3, 0x4

    .line 28
    invoke-virtual {p0, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 31
    move-result v6

    .line 32
    const/4 p3, 0x5

    .line 33
    invoke-virtual {p0, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 36
    move-result v7

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    const/4 p0, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    new-instance p1, Landroid/accounts/AuthenticatorDescription;

    .line 50
    move-object v0, p1

    .line 51
    move-object v2, p2

    .line 52
    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    move-object p0, p1

    .line 59
    :goto_0
    return-object p0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    throw p1
.end method
