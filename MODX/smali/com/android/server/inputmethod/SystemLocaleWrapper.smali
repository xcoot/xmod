.class public abstract Lcom/android/server/inputmethod/SystemLocaleWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v1, Landroid/os/LocaleList;

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/util/Locale;

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 12
    move-result-object v4

    .line 13
    aput-object v4, v2, v3

    .line 15
    invoke-direct {v1, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 21
    sput-object v0, Lcom/android/server/inputmethod/SystemLocaleWrapper;->sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    return-void
.end method

.method public static get()Landroid/os/LocaleList;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/inputmethod/SystemLocaleWrapper;->sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/LocaleList;

    .line 9
    return-object v0
.end method
