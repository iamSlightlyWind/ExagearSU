.class final Lcom/google/android/gms/common/api/internal/zzch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzas:Ljava/lang/String;

.field private synthetic zzgaq:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

.field private synthetic zzgar:Lcom/google/android/gms/common/api/internal/zzcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzcg;Lcom/google/android/gms/common/api/internal/LifecycleCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgar:Lcom/google/android/gms/common/api/internal/zzcg;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgaq:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzas:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgar:Lcom/google/android/gms/common/api/internal/zzcg;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzcg;->zza(Lcom/google/android/gms/common/api/internal/zzcg;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgaq:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgar:Lcom/google/android/gms/common/api/internal/zzcg;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzcg;->zzb(Lcom/google/android/gms/common/api/internal/zzcg;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgar:Lcom/google/android/gms/common/api/internal/zzcg;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzcg;->zzb(Lcom/google/android/gms/common/api/internal/zzcg;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzas:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgar:Lcom/google/android/gms/common/api/internal/zzcg;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzcg;->zza(Lcom/google/android/gms/common/api/internal/zzcg;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgaq:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgar:Lcom/google/android/gms/common/api/internal/zzcg;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzcg;->zza(Lcom/google/android/gms/common/api/internal/zzcg;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgaq:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onResume()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgar:Lcom/google/android/gms/common/api/internal/zzcg;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzcg;->zza(Lcom/google/android/gms/common/api/internal/zzcg;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgaq:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgar:Lcom/google/android/gms/common/api/internal/zzcg;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzcg;->zza(Lcom/google/android/gms/common/api/internal/zzcg;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzch;->zzgaq:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onDestroy()V

    :cond_5
    return-void
.end method
